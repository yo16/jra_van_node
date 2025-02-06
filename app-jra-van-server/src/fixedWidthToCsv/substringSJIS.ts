import iconv from 'iconv-lite';

export function substringSJIS(str: string, startByte: number, byteLength: number): string {
    const sjisBuffer = iconv.encode(str, "Shift_JIS");
    //const slicedBuffer = sjisBuffer.slice(startByte, startByte + byteLength);
    const slicedBuffer = sjisBuffer.subarray(startByte, startByte + byteLength);
    return iconv.decode(slicedBuffer, "Shift_JIS");
}

