.class public Lcom/oneplus/api/domain/Account;
.super Lcom/oneplus/api/domain/BaseDomain;
.source "Account.java"


# static fields
.field private static final serialVersionUID:J = -0x3c4ceec65f0cd22bL


# instance fields
.field private userId:Ljava/lang/String;
    .annotation runtime Lcom/oneplus/api/util/annotation/ApiField;
        value = "userId"
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
.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oneplus/api/domain/Account;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oneplus/api/domain/Account;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/oneplus/api/domain/Account;->userId:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/oneplus/api/domain/Account;->userName:Ljava/lang/String;

    .line 53
    return-void
.end method
