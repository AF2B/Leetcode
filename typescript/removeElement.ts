const removeElement = function(nums: number[], val: number): number {
    let k: number = 0;
    for(const num of nums) {
        if(num !== val) {
            nums[k] = num;
            k++;
        }
    }
    
    return k;
};
