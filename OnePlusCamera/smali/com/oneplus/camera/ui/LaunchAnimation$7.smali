.class Lcom/oneplus/camera/ui/LaunchAnimation$7;
.super Ljava/lang/Object;
.source "LaunchAnimation.java"

# interfaces
.implements Lcom/oneplus/base/component/ComponentSearchCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/LaunchAnimation;->onInitialize()V
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
.field final synthetic this$0:Lcom/oneplus/camera/ui/LaunchAnimation;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/LaunchAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/LaunchAnimation;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/oneplus/camera/ui/LaunchAnimation$7;->this$0:Lcom/oneplus/camera/ui/LaunchAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComponentFound(Lcom/oneplus/base/component/Component;)V
    .locals 0
    .param p1, "component"    # Lcom/oneplus/base/component/Component;

    .prologue
    .line 286
    check-cast p1, Lcom/oneplus/camera/ui/Viewfinder;

    .end local p1    # "component":Lcom/oneplus/base/component/Component;
    invoke-virtual {p0, p1}, Lcom/oneplus/camera/ui/LaunchAnimation$7;->onComponentFound(Lcom/oneplus/camera/ui/Viewfinder;)V

    return-void
.end method

.method public onComponentFound(Lcom/oneplus/camera/ui/Viewfinder;)V
    .locals 2
    .param p1, "component"    # Lcom/oneplus/camera/ui/Viewfinder;

    .prologue
    .line 288
    sget-object v0, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    new-instance v1, Lcom/oneplus/camera/ui/LaunchAnimation$7$1;

    invoke-direct {v1, p0}, Lcom/oneplus/camera/ui/LaunchAnimation$7$1;-><init>(Lcom/oneplus/camera/ui/LaunchAnimation$7;)V

    invoke-interface {p1, v0, v1}, Lcom/oneplus/camera/ui/Viewfinder;->addCallback(Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangedCallback;)V

    .line 296
    iget-object v1, p0, Lcom/oneplus/camera/ui/LaunchAnimation$7;->this$0:Lcom/oneplus/camera/ui/LaunchAnimation;

    sget-object v0, Lcom/oneplus/camera/ui/Viewfinder;->PROP_PREVIEW_BOUNDS:Lcom/oneplus/base/PropertyKey;

    invoke-interface {p1, v0}, Lcom/oneplus/camera/ui/Viewfinder;->get(Lcom/oneplus/base/PropertyKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    invoke-static {v1, v0}, Lcom/oneplus/camera/ui/LaunchAnimation;->-wrap2(Lcom/oneplus/camera/ui/LaunchAnimation;Landroid/graphics/RectF;)V

    .line 286
    return-void
.end method
