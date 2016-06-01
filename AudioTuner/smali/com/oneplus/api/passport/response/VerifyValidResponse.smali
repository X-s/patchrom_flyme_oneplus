.class public Lcom/oneplus/api/passport/response/VerifyValidResponse;
.super Lcom/oneplus/api/OneplusResponse;
.source "VerifyValidResponse.java"


# static fields
.field private static final serialVersionUID:J = 0x4d3b04d019bba08eL


# instance fields
.field private isValid:Ljava/lang/Boolean;
    .annotation runtime Lcom/oneplus/api/util/annotation/ApiField;
        value = "data"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/oneplus/api/constants/ResponseDataType;->JSON:Lcom/oneplus/api/constants/ResponseDataType;

    invoke-direct {p0, v0}, Lcom/oneplus/api/OneplusResponse;-><init>(Lcom/oneplus/api/constants/ResponseDataType;)V

    .line 30
    return-void
.end method


# virtual methods
.method public isValid()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oneplus/api/passport/response/VerifyValidResponse;->isValid:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setIsValid(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isValid"    # Ljava/lang/Boolean;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oneplus/api/passport/response/VerifyValidResponse;->isValid:Ljava/lang/Boolean;

    .line 44
    return-void
.end method
