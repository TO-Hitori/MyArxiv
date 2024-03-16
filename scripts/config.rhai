let titles_type = ["Dataset", "Survey", "Review", "Overview"];
let titles_model = ["GPT", "Transformer", "Diffusion", "AIGC"];
let titles_method = ["Pre-train", "Pretrain", "Prompt", "Self-Supervised", "AIGC"];
let titles =  titles_model + titles_method + titles_type;
let authors_array = ["Yann LeCun", "Geoffrey Hinton", "Yoshua Bengio"];

let conferences = [
    // AI
    "AAAI", "ACM MM", "SIGGRAPH",
    // CV
    "ACM MM", "BMVC", "CVPR", "ECCV", "ICCV", "ICIP", "ICME", "SIGGRAPH", 
    // ML
    "ACML", "AISTATS", "ECML", "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS",   
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
