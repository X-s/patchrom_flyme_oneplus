.class public Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;
.super Ljava/lang/Object;
.source "GalleryImgInfo.java"


# instance fields
.field private galleryId:I

.field private id:I

.field private pic:Ljava/lang/String;

.field private rid:J

.field private title:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method


# virtual methods
.method public getGalleryId()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->galleryId:I

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->id:I

    return v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getRid()J
    .locals 2

    .prologue
    .line 49
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->rid:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setGalleryId(I)V
    .locals 0
    .param p1, "galleryId"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->galleryId:I

    .line 30
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->id:I

    .line 38
    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0
    .param p1, "pic"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->pic:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setRid(J)V
    .locals 1
    .param p1, "rid"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->rid:J

    .line 54
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->title:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->type:I

    .line 46
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/GalleryImgInfo;->url:Ljava/lang/String;

    .line 70
    return-void
.end method
