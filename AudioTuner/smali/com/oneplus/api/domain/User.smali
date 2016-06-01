.class public Lcom/oneplus/api/domain/User;
.super Lcom/oneplus/api/domain/BaseDomain;
.source "User.java"


# static fields
.field private static final serialVersionUID:J = -0x40f75dac4bd875deL


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
    .line 67
    iget-object v0, p0, Lcom/oneplus/api/domain/User;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getMobile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oneplus/api/domain/User;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/oneplus/api/domain/User;->openId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/oneplus/api/domain/User;->status:Ljava/lang/Integer;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/oneplus/api/domain/User;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setEmail(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/oneplus/api/domain/User;->email:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setMobile(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobile"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/oneplus/api/domain/User;->mobile:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setOpenId(Ljava/lang/String;)V
    .locals 0
    .param p1, "openId"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/oneplus/api/domain/User;->openId:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setStatus(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/Integer;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/oneplus/api/domain/User;->status:Ljava/lang/Integer;

    .line 80
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/oneplus/api/domain/User;->userName:Ljava/lang/String;

    .line 56
    return-void
.end method
