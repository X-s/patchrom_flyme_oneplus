.class public Lcom/oneplus/api/passport/response/AuthTokenResponse;
.super Lcom/oneplus/api/OneplusResponse;
.source "AuthTokenResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x60bf802d8d7e052fL


# instance fields
.field private authContent:Lcom/oneplus/api/domain/AuthContent;
    .annotation runtime Lcom/oneplus/api/util/annotation/ApiField;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/oneplus/api/constants/ResponseDataType;->JSON:Lcom/oneplus/api/constants/ResponseDataType;

    invoke-direct {p0, v0}, Lcom/oneplus/api/OneplusResponse;-><init>(Lcom/oneplus/api/constants/ResponseDataType;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getAuthContent()Lcom/oneplus/api/domain/AuthContent;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/api/passport/response/AuthTokenResponse;->authContent:Lcom/oneplus/api/domain/AuthContent;

    return-object v0
.end method

.method public setAuthContent(Lcom/oneplus/api/domain/AuthContent;)V
    .locals 0
    .param p1, "authContent"    # Lcom/oneplus/api/domain/AuthContent;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/oneplus/api/passport/response/AuthTokenResponse;->authContent:Lcom/oneplus/api/domain/AuthContent;

    .line 43
    return-void
.end method
