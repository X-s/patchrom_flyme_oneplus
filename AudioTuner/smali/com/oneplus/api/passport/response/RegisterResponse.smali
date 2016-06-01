.class public Lcom/oneplus/api/passport/response/RegisterResponse;
.super Lcom/oneplus/api/OneplusResponse;
.source "RegisterResponse.java"


# static fields
.field private static final serialVersionUID:J = -0x1233b62d5a8e9092L


# instance fields
.field private account:Lcom/oneplus/api/domain/Account;
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
.method public getAccount()Lcom/oneplus/api/domain/Account;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/oneplus/api/passport/response/RegisterResponse;->account:Lcom/oneplus/api/domain/Account;

    return-object v0
.end method

.method public setAccount(Lcom/oneplus/api/domain/Account;)V
    .locals 0
    .param p1, "account"    # Lcom/oneplus/api/domain/Account;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/oneplus/api/passport/response/RegisterResponse;->account:Lcom/oneplus/api/domain/Account;

    .line 43
    return-void
.end method
