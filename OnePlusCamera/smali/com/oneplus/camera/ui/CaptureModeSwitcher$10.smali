.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$10;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher;->setupPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V
    .locals 0

    .prologue
    .line 975
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$10;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 979
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$10;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    # invokes: Lcom/oneplus/camera/ui/CaptureModeSwitcher;->onAdvancedSettingsButtonClicked()V
    invoke-static {v0}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->access$3700(Lcom/oneplus/camera/ui/CaptureModeSwitcher;)V

    .line 980
    return-void
.end method
