package utils

import (
	"github.com/gin-gonic/gin"
)

func GetPath(c *gin.Context) string {
	//"http://" + c.Request.Host
	return "http://www.frontendgo.com:8886"
}

