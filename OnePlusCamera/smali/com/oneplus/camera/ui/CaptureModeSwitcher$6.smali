.class Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;
.super Ljava/lang/Object;
.source "CaptureModeSwitcher.java"

# interfaces
.implements Lcom/oneplus/camera/ui/PreviewCover$OnStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/ui/CaptureModeSwitcher;
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
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V
    .locals 1
    .param p1, "oldValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;
    .param p2, "newValue"    # Lcom/oneplus/camera/ui/PreviewCover$UIState;

    .prologue
    .line 359
    iget-object v0, p0, Lcom/oneplus/camera/ui/CaptureModeSwitcher$6;->this$0:Lcom/oneplus/camera/ui/CaptureModeSwitcher;

    invoke-static {v0, p1, p2}, Lcom/oneplus/camera/ui/CaptureModeSwitcher;->-wrap14(Lcom/oneplus/camera/ui/CaptureModeSwitcher;Lcom/oneplus/camera/ui/PreviewCover$UIState;Lcom/oneplus/camera/ui/PreviewCover$UIState;)V

    .line 357
    return-void
.end method
