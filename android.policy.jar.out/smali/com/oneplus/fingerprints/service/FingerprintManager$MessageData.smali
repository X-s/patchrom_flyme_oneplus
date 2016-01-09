.class public Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;
.super Ljava/lang/Object;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/fingerprints/service/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageData"
.end annotation


# instance fields
.field private mArg1:I

.field private mArg2:I

.field private mArg3:I

.field final synthetic this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/fingerprints/service/FingerprintManager;III)V
    .locals 0
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 67
    iput-object p1, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->this$0:Lcom/oneplus/fingerprints/service/FingerprintManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput p2, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg1:I

    .line 70
    iput p3, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg2:I

    .line 71
    iput p4, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg3:I

    .line 72
    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;

    .prologue
    .line 54
    iget v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg1:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;

    .prologue
    .line 54
    iget v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg2:I

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;

    .prologue
    .line 54
    iget v0, p0, Lcom/oneplus/fingerprints/service/FingerprintManager$MessageData;->mArg3:I

    return v0
.end method
