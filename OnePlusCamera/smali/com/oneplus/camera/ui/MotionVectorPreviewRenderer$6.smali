.class Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$6;
.super Ljava/lang/Object;
.source "MotionVectorPreviewRenderer.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/component/ComponentSearchCallback",
        "<",
        "Lcom/oneplus/camera/ui/Viewfinder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$6;->this$0:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 235
    check-cast p1, Lcom/oneplus/camera/ui/Viewfinder;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$6;->onComponentFound(Lcom/oneplus/camera/ui/Viewfinder;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/ui/Viewfinder;)V
    .locals 1
    .param p1, "component"    # Lcom/oneplus/camera/ui/Viewfinder;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer$6;->this$0:Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;

    invoke-static {v0, p1}, Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;->-set1(Lcom/oneplus/camera/ui/MotionVectorPreviewRenderer;Lcom/oneplus/camera/ui/Viewfinder;)Lcom/oneplus/camera/ui/Viewfinder;

    .line 235
    return-void
.end method
