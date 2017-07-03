.class Lcom/oneplus/gallery2/editor/ColorMatrixFilter$1;
.super Ljava/lang/Object;
.source "ColorMatrixFilter.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/editor/ColorMatrixFilter;
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
.field final synthetic this$0:Lcom/oneplus/gallery2/editor/ColorMatrixFilter;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/editor/ColorMatrixFilter;)V
    .locals 0

    .prologue
    .line 24
    iput-object p1, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter$1;->this$0:Lcom/oneplus/gallery2/editor/ColorMatrixFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
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
    .line 28
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/Boolean;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/oneplus/gallery2/editor/ColorMatrixFilter$1;->this$0:Lcom/oneplus/gallery2/editor/ColorMatrixFilter;

    sget-object v1, Lcom/oneplus/gallery2/editor/PhotoEditorObject;->PROP_IS_MODIFIED:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v2

    # invokes: Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->setReadOnly(Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z
    invoke-static {v0, v1, v2}, Lcom/oneplus/gallery2/editor/ColorMatrixFilter;->access$000(Lcom/oneplus/gallery2/editor/ColorMatrixFilter;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 29
    return-void
.end method
