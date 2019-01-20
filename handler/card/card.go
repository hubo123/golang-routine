package card

import (
	"github.com/gin-gonic/gin"
	"jiudao/constant/errno"
	"jiudao/handler"
	"jiudao/model"
)

// @Summary 发布卡片
// @Description 发布卡片
// @Success 200 {object} handler.Response
// @Router /v1/like [post]
func PublishCard(c *gin.Context) {
	// 1. 参数绑定
	var body CardBody
	if err := c.ShouldBind(&body); err != nil {
		handler.SendResponse(c, errno.New(errno.JsonError, nil).Add(err.Error()), nil)
		return
	}

	// 2. 数据库操作
	if err := model.PublishCard(body.Title, body.Content, body.Type, body.Img); err != nil {
		handler.SendResponse(c, err, nil)
		return
	}

	// 2. 响应数据
	handler.SendResponse(c, nil, "ok")
}
