.class Lcom/oneplus/gallery/editor/BaseEditorMode$2;
.super Ljava/lang/Object;
.source "BaseEditorMode.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery/editor/BaseEditorMode;
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
        "Lcom/oneplus/base/BaseFragment$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/editor/BaseEditorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/editor/BaseEditorMode;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/oneplus/gallery/editor/BaseEditorMode$2;->this$0:Lcom/oneplus/gallery/editor/BaseEditorMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 2
    .param p1, "source"    # Lcom/oneplus/base/PropertySource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/PropertySource;",
            "Lcom/oneplus/base/PropertyKey",
            "<",
            "Lcom/oneplus/base/BaseFragment$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/base/BaseFragment$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/base/BaseFragment$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/base/BaseFragment$State;>;"
    sget-object v1, Lcom/oneplus/gallery/editor/BaseEditorMode$5;->$SwitchMap$com$oneplus$base$BaseFragment$State:[I

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseFragment$State;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseFragment$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 52
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode$2;->this$0:Lcom/oneplus/gallery/editor/BaseEditorMode;

    invoke-virtual {v0}, Lcom/oneplus/gallery/editor/BaseEditorMode;->onFragmentResuming()V

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery/editor/BaseEditorMode$2;->this$0:Lcom/oneplus/gallery/editor/BaseEditorMode;

    invoke-virtual {v0}, Lcom/oneplus/gallery/editor/BaseEditorMode;->onFragmentDestroying()V

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
