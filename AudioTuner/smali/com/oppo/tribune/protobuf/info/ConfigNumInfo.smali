.class public Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;
.super Ljava/lang/Object;
.source "ConfigNumInfo.java"


# instance fields
.field private brand_id:J

.field private config_num:I

.field private request_num:I

.field private type:Ljava/lang/String;

.field private type_id:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrandId()J
    .locals 2

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->brand_id:J

    return-wide v0
.end method

.method public getConfigNum()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->config_num:I

    return v0
.end method

.method public getRequestNum()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->request_num:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeId()J
    .locals 2

    .prologue
    .line 11
    iget-wide v0, p0, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->type_id:J

    return-wide v0
.end method

.method public setBrandId(J)V
    .locals 1
    .param p1, "brand_id"    # J

    .prologue
    .line 47
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->brand_id:J

    .line 48
    return-void
.end method

.method public setConfigNum(I)V
    .locals 0
    .param p1, "config_num"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->config_num:I

    .line 32
    return-void
.end method

.method public setRequestNum(I)V
    .locals 0
    .param p1, "request_num"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->request_num:I

    .line 40
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->type:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setTypeId(J)V
    .locals 1
    .param p1, "type_id"    # J

    .prologue
    .line 15
    iput-wide p1, p0, Lcom/oppo/tribune/protobuf/info/ConfigNumInfo;->type_id:J

    .line 16
    return-void
.end method
