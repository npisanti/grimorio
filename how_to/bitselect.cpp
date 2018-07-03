
inline static int bitselect(int condition, int truereturnvalue, int falsereturnvalue)
{
    return (truereturnvalue & -condition) | (falsereturnvalue & ~(-condition)); //a when TRUE and b when FALSE
}

inline static float bitselect(int condition, float truereturnvalue, float falsereturnvalue)
{
    //Reinterpret floats. Would work because it's just a bit select, no matter the actual value
    int& at = reinterpret_cast<int&>(truereturnvalue);
    int& af = reinterpret_cast<int&>(falsereturnvalue);
    int res = (at & -condition) | (af & ~(-condition)); //a when TRUE and b when FALSE
    return  reinterpret_cast<float&>(res);
}
