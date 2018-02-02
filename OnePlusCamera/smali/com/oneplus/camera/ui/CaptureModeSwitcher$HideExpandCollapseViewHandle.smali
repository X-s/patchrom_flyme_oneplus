.class final Lcom/oneplus/camera/ui/CaptureModeSwitcher$HideExpandCollapseViewHandle;
.super Lcom/oneplus/base/Handle;
.source "CaptureModeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HideExpandCollapseViewHandle"
.end annotation


# instance fields
.field public final owner:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;


# direct methods
.method public constructor <init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;
    .param p2, "owner"    # Ljava/lang/String;

    .prologue
    .line 1994
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$HideExpandCollapseViewHandle;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .line 1996
    const-string/jumbo v0, "HideExpandCollapseViewHandle"

    invoke-direct {p0, v0}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    .line 1997
    iput-object p2, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$HideExpandCollapseViewHandle;->owner:Ljava/lang/String;

    .line 1994
    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 1
    .param p1, "flags"    # I

    .prologue
    .line 2003
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$HideExpandCollapseViewHandle;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0, p0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap21(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/CaptureModeSwitcher$HideExpandCollapseViewHandle;)V

    .line 2001
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/oneplus/base/Handle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "{ Owner = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$HideExpandCollapseViewHandle;->owner:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
