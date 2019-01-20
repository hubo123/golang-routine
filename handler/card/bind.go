package card

// 发布卡片的请求参数
type CardBody struct {
	Title   string `json:"title" binding`
	Content string `json:"content" binding`
	Type    string `json:"type" binding`
	Img     string `json:"img" binding`
}
