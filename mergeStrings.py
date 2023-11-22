def merge_strings(word1, word2):
    merged_string = []
    i, j = 0, 0

    while i < len(word1) or j < len(word2):
        if i < len(word1):
            merged_string.append(word1[i])
            i += 1

        if j < len(word2):
            merged_string.append(word2[j])
            j += 1

    return ''.join(merged_string)

word1_1, word2_1 = "abc", "pqr"
print(f"Input: word1 = \"{word1_1}\", word2 = \"{word2_1}\"")
print(f"Output: \"{merge_strings(word1_1, word2_1)}\"\n")