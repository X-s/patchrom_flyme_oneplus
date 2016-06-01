.class public Lcom/oneplus/camera/DialogManager$DialogParams;
.super Ljava/lang/Object;
.source "DialogManager.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/DialogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogParams"
.end annotation


# instance fields
.field public bottomMargin:I

.field public height:I

.field public leftMargin:I

.field public maxHeight:I

.field public maxWidth:I

.field public rightMargin:I

.field public topMargin:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x2

    iput v0, p0, Lcom/oneplus/camera/DialogManager$DialogParams;->height:I

    .line 53
    iput v1, p0, Lcom/oneplus/camera/DialogManager$DialogParams;->maxHeight:I

    .line 57
    iput v1, p0, Lcom/oneplus/camera/DialogManager$DialogParams;->maxWidth:I

    .line 69
    iput v1, p0, Lcom/oneplus/camera/DialogManager$DialogParams;->width:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/oneplus/camera/DialogManager$DialogParams;
    .locals 2

    .prologue
    .line 77
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/DialogManager$DialogParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 81
    .local v0, "ex":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/oneplus/camera/DialogManager$DialogParams;->clone()Lcom/oneplus/camera/DialogManager$DialogParams;

    move-result-object v0

    return-object v0
.end method
