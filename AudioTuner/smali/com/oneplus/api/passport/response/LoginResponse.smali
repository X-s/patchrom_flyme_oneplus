.class public Lcom/oneplus/api/passport/response/LoginResponse;
.super Lcom/oneplus/api/OneplusResponse;
.source "LoginResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x1233b62d5a8e9092L


# instance fields
.field private authContent:Lcom/oneplus/api/domain/AuthContent;
    .annotation runtime Lcom/oneplus/api/util/annotation/ApiField;
        value = "data"
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/oneplus/api/constants/ResponseDataType;->JSON:Lcom/oneplus/api/constants/ResponseDataType;

    invoke-direct {p0, v0}, Lcom/oneplus/api/OneplusResponse;-><init>(Lcom/oneplus/api/constants/ResponseDataType;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getAuthContent()Lcom/oneplus/api/domain/AuthContent;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oneplus/api/passport/response/LoginResponse;->authContent:Lcom/oneplus/api/domain/AuthContent;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oneplus/api/passport/response/LoginResponse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthContent(Lcom/oneplus/api/domain/AuthContent;)V
    .locals 0
    .param p1, "authContent"    # Lcom/oneplus/api/domain/AuthContent;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/oneplus/api/passport/response/LoginResponse;->authContent:Lcom/oneplus/api/domain/AuthContent;

    .line 59
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/oneplus/api/passport/response/LoginResponse;->name:Ljava/lang/String;

    .line 41
    return-void
.end method
