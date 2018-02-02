.class final Lcom/oneplus/camera/ui/BusinessCardUI$SavingLastSettingsHandle;
.super Lcom/oneplus/base/Handle;
.source "BusinessCardUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/BusinessCardUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SavingLastSettingsHandle"
.end annotation


# instance fields
.field private photoReslution:Lcom/oneplus/camera/media/Resolution;

.field final synthetic this$0:Lcom/oneplus/camera/ui/BusinessCardUI;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/ui/BusinessCardUI;Lcom/oneplus/camera/media/Resolution;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/BusinessCardUI;
    .param p2, "resolution"    # Lcom/oneplus/camera/media/Resolution;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/oneplus/camera/ui/BusinessCardUI$SavingLastSettingsHandle;->this$0:Lcom/oneplus/camera/ui/BusinessCardUI;

    .line 61
    const-string/jumbo v0, "SavingLastSettings"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 62
    iput-object p2, p0, Lcom/oneplus/camera/ui/BusinessCardUI$SavingLastSettingsHandle;->photoReslution:Lcom/oneplus/camera/media/Resolution;

    .line 59
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oneplus/camera/ui/BusinessCardUI$SavingLastSettingsHandle;->this$0:Lcom/oneplus/camera/ui/BusinessCardUI;

    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI$SavingLastSettingsHandle;->photoReslution:Lcom/oneplus/camera/media/Resolution;

    invoke-static {v0, v1}, Lcom/oneplus/camera/ui/BusinessCardUI;->-wrap1(Lcom/oneplus/camera/ui/BusinessCardUI;Lcom/oneplus/camera/media/Resolution;)V

    .line 66
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/oneplus/base/Handle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{ Resolution = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/BusinessCardUI$SavingLastSettingsHandle;->photoReslution:Lcom/oneplus/camera/media/Resolution;

    invoke-virtual {v1}, Lcom/oneplus/camera/media/Resolution;->getAspectRatio()Lcom/oneplus/util/AspectRatio;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/util/AspectRatio;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
