import winax from 'winax';

export function loadData() {
    let raceData = "";
    try {
        const jvlink = new winax.Object("JVDTLab.JVLink");

        // JVLinkの初期化
        const result = jvlink.JVInit("UNKNOWN");
        if (result < 0) {
            throw new Error(`JVInit failed with code: ${result}`);
        }

        // データ取得のためのパラメータ設定
        const raceId = "2024031007010211"; // 例: 2024年3月10日の中山1レース
        const openResult = jvlink.JVRTOpen("0B31", raceId);
        if (openResult < 0) {
            throw new Error(`JVRTOpen failed with code: ${openResult}`);
        }

        const bufferSize = 1000;
        // データの読み込み
        while (true) {
            const buffer = new Array(bufferSize).fill(" ").join("");
            const readResult = jvlink.JVRead(buffer, bufferSize, null);

            if (readResult > 0) {
                raceData += buffer.substring(0, readResult);
            } else if (readResult === 0) {
                break;  // 読み込み完了
            } else {
                throw new Error(`JVRead failed with code: ${readResult}`);
            }
        }

        // JVLinkのクローズ
        jvlink.JVClose();

    } catch (error) {
        if (error instanceof Error) {
            return { error: error.message };
        }
        return { error: "An unknown error occurred" };
    }

    return { data: raceData };
}
