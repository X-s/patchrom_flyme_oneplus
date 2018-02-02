.class Lcom/oneplus/camera/ui/TouchFocusExposureUI$9;
.super Lcom/oneplus/base/Handle;
.source "TouchFocusExposureUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/TouchFocusExposureUI;->touchAutoExposure(FF)Lcom/oneplus/base/Handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/TouchFocusExposureUI;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/TouchFocusExposureUI;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/TouchFocusExposureUI;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/oneplus/camera/ui/TouchFocusExposureUI$9;->this$0:Lcom/oneplus/camera/ui/TouchFocusExposureUI;

    invoke-direct {p0, p2}, Lcom/oneplus/base/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 0
    .param p1, "flags"    # I

    .prologue
    .line 529
    return-void
.end method
