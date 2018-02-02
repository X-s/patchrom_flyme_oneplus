.class Lcom/oneplus/camera/ui/CountDownTimerIndicator$3;
.super Ljava/lang/Object;
.source "CountDownTimerIndicator.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/ui/CountDownTimerIndicator;->onInitialize()V
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
        "Landroid/graphics/RectF;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/ui/CountDownTimerIndicator;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/ui/CountDownTimerIndicator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/ui/CountDownTimerIndicator;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator$3;->this$0:Lcom/oneplus/camera/ui/CountDownTimerIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Landroid/graphics/RectF;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Landroid/graphics/RectF;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Landroid/graphics/RectF;>;"
    iget-object v0, p0, Lcom/oneplus/camera/ui/CountDownTimerIndicator$3;->this$0:Lcom/oneplus/camera/ui/CountDownTimerIndicator;

    invoke-static {v0}, Lcom/oneplus/camera/ui/CountDownTimerIndicator;->-wrap3(Lcom/oneplus/camera/ui/CountDownTimerIndicator;)V

    .line 174
    return-void
.end method
