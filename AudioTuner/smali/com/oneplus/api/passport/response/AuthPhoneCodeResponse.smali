.class public Lcom/oneplus/api/passport/response/AuthPhoneCodeResponse;
.super Lcom/oneplus/api/OneplusResponse;
.source "AuthPhoneCodeResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x1233b62d5a8e9092L


# instance fields
.field private authId:Ljava/lang/String;
    .annotation runtime Lcom/oneplus/api/util/annotation/ApiField;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/oneplus/api/constants/ResponseDataType;->JSON:Lcom/oneplus/api/constants/ResponseDataType;

    invoke-direct {p0, v0}, Lcom/oneplus/api/OneplusResponse;-><init>(Lcom/oneplus/api/constants/ResponseDataType;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getAuthId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oneplus/api/passport/response/AuthPhoneCodeResponse;->authId:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthId(Ljava/lang/String;)V
    .locals 0
    .param p1, "authId"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/oneplus/api/passport/response/AuthPhoneCodeResponse;->authId:Ljava/lang/String;

    .line 45
    return-void
.end method
