.class Lcom/oneplus/camera/ui/ZoomBarImpl$10;
.super Ljava/lang/Object;
.source "ZoomBarImpl.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/ZoomBarImpl;->onInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/PropertyChangedCallback",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/ZoomBarImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/ZoomBarImpl;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 4
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    const/high16 v3, 0x40000000    # 2.0f

    .line 521
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get11(Lcom/oneplus/camera/ui/ZoomBarImpl;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get6(Lcom/oneplus/camera/ui/ZoomBarImpl;)Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 522
    :cond_0
    return-void

    .line 523
    :cond_1
    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 524
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get6(Lcom/oneplus/camera/ui/ZoomBarImpl;)Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get11(Lcom/oneplus/camera/ui/ZoomBarImpl;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get11(Lcom/oneplus/camera/ui/ZoomBarImpl;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->collapse(FFZ)V

    .line 519
    :cond_2
    :goto_0
    return-void

    .line 525
    :cond_3
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get3(Lcom/oneplus/camera/ui/ZoomBarImpl;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    iget-object v0, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v0}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get6(Lcom/oneplus/camera/ui/ZoomBarImpl;)Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v1}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get11(Lcom/oneplus/camera/ui/ZoomBarImpl;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/oneplus/camera/ui/ZoomBarImpl$10;->this$0:Lcom/oneplus/camera/ui/ZoomBarImpl;

    invoke-static {v2}, Lcom/oneplus/camera/ui/ZoomBarImpl;->-get11(Lcom/oneplus/camera/ui/ZoomBarImpl;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/camera/drawable/ExpandableBackgroundDrawable;->expand(FFZ)V

    goto :goto_0
.end method
