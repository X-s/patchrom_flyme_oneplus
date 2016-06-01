.class public abstract Lcom/oneplus/api/OneplusResponse;
.super Ljava/lang/Object;
.source "OneplusResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x69717793b332430fL


# instance fields
.field private dataType:Lcom/oneplus/api/constants/ResponseDataType;

.field private errCode:Ljava/lang/String;
    .annotation runtime Lcom/oneplus/api/util/annotation/ApiField;
        value = "errCode"
    .end annotation
.end field

.field private errMsg:Ljava/lang/String;
    .annotation runtime Lcom/oneplus/api/util/annotation/ApiField;
        value = "errMsg"
    .end annotation
.end field

.field private httpStatus:Ljava/lang/Integer;

.field private responseBody:Ljava/lang/String;

.field private ret:Ljava/lang/String;
    .annotation runtime Lcom/oneplus/api/util/annotation/ApiField;
        value = "ret"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oneplus/api/constants/ResponseDataType;)V
    .locals 0
    .param p1, "dataType"    # Lcom/oneplus/api/constants/ResponseDataType;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/oneplus/api/OneplusResponse;->dataType:Lcom/oneplus/api/constants/ResponseDataType;

    .line 63
    return-void
.end method


# virtual methods
.method public getDataType()Lcom/oneplus/api/constants/ResponseDataType;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oneplus/api/OneplusResponse;->dataType:Lcom/oneplus/api/constants/ResponseDataType;

    return-object v0
.end method

.method public getErrCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oneplus/api/OneplusResponse;->errCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/oneplus/api/OneplusResponse;->errMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpStatus()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oneplus/api/OneplusResponse;->httpStatus:Ljava/lang/Integer;

    return-object v0
.end method

.method public getResponseBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oneplus/api/OneplusResponse;->responseBody:Ljava/lang/String;

    return-object v0
.end method

.method public getRet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/oneplus/api/OneplusResponse;->ret:Ljava/lang/String;

    return-object v0
.end method

.method public setErrCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "errCode"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/oneplus/api/OneplusResponse;->errCode:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setErrMsg(Ljava/lang/String;)V
    .locals 0
    .param p1, "errMsg"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/oneplus/api/OneplusResponse;->errMsg:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setHttpStatus(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "httpStatus"    # Ljava/lang/Integer;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/oneplus/api/OneplusResponse;->httpStatus:Ljava/lang/Integer;

    .line 77
    return-void
.end method

.method public setResponseBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "responseBody"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/oneplus/api/OneplusResponse;->responseBody:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setRet(Ljava/lang/String;)V
    .locals 0
    .param p1, "ret"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/oneplus/api/OneplusResponse;->ret:Ljava/lang/String;

    .line 114
    return-void
.end method
