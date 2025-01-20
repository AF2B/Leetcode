function lengthOfLastWord(s: string): number {
    const strSplited = s.trim().split(" ");
    const lastWord = strSplited[strSplited.length - 1];
    return lastWord.length;
}
