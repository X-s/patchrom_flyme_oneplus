.class public Lcom/oneplus/api/domain/AuthContent;
.super Lcom/oneplus/api/domain/BaseDomain;
.source "AuthContent.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private email:Ljava/lang/String;
    .annotation runtime Lcom/oneplus/api/util/annotation/ApiField;
        value = "email"
    .end annotation
.end field

.field private mobile:Ljava/lang/String;
    .annotation runtime Lcom/oneplus/api/util/annotation/ApiField;
        value = "mobile"
    .end annotation
.end field

.field private openId:Ljava/lang/String;
    .annotation runtime Lcom/oneplus/api/util/annotation/ApiField;
        value = "openId"
    .end annotation
.end field

.field private status:Ljava/lang/Integer;
    .annotation runtime Lcom/oneplus/api/util/annotation/ApiField;
        value = "status"
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lcom/oneplus/api/util/annotation/ApiField;
        value = "token"
    .end annotation
.end field

.field private userName:Ljava/lang/String;
    .annotation runtime Lcom/oneplus/api/util/annotation/ApiField;
        value = "userName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/oneplus/api/domain/BaseDomain;-><init>()V

    return-void
.end method


# virtual methods
.method public getEmail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oneplus/api/domain/AuthContent;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/oneplus/api/domain/AuthContent;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/oneplus/api/domain/AuthContent;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oneplus/api/domain/AuthContent;->status:Ljava/lang/Integer;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oneplus/api/domain/AuthContent;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/oneplus/api/domain/AuthContent;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/oneplus/api/domain/AuthContent;->email:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobile"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/oneplus/api/domain/AuthContent;->mobile:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 0
    .param p1, "openId"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/oneplus/api/domain/AuthContent;->openId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setStatus(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/Integer;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/oneplus/api/domain/AuthContent;->status:Ljava/lang/Integer;

    .line 79
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/oneplus/api/domain/AuthContent;->token:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/oneplus/api/domain/AuthContent;->userName:Ljava/lang/String;

    .line 87
    return-void
.end method
