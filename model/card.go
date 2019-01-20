package model

import (
	"github.com/jinzhu/gorm"
)

type Card struct {
	gorm.Model
	Title   string `gorm:"column:title" json:"title"`
	Content string `gorm:"column:content" json:"content"`
	Type    string `gorm:"column:type" json:"type"`
	Img     string `gorm:"column:img" json:"img"`
}

func (Card) TableName() string {
	return "person"
}

func (f *Card) Create() error {
	return DB.Create(&f).Error
}

// 增加
func PublishCard(title, content, cardType, img string) error {
	f := Card{Title: title, Content: content, Type: cardType, Img: img}
	return f.Create()
}
