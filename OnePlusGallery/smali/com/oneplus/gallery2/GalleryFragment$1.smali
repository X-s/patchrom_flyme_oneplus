.class Lcom/oneplus/gallery2/GalleryFragment$1;
.super Ljava/lang/Object;
.source "GalleryFragment.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/GalleryFragment;
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
        "Lcom/oneplus/base/BaseActivity$State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/GalleryFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/GalleryFragment;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/oneplus/gallery2/GalleryFragment$1;->this$0:Lcom/oneplus/gallery2/GalleryFragment;

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
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Lcom/oneplus/base/BaseActivity$State;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Lcom/oneplus/base/BaseActivity$State;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Lcom/oneplus/base/BaseActivity$State;>;"
    sget-object v1, Lcom/oneplus/gallery2/GalleryFragment$2;->$SwitchMap$com$oneplus$base$BaseActivity$State:[I

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$State;

    invoke-virtual {v0}, Lcom/oneplus/base/BaseActivity$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 63
    :goto_0
    return-void

    .line 51
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryFragment$1;->this$0:Lcom/oneplus/gallery2/GalleryFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GalleryFragment;->onActivityPause()V

    goto :goto_0

    .line 54
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryFragment$1;->this$0:Lcom/oneplus/gallery2/GalleryFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GalleryFragment;->onActivityResume()V

    goto :goto_0

    .line 57
    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryFragment$1;->this$0:Lcom/oneplus/gallery2/GalleryFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GalleryFragment;->onActivityStart()V

    goto :goto_0

    .line 60
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/gallery2/GalleryFragment$1;->this$0:Lcom/oneplus/gallery2/GalleryFragment;

    invoke-virtual {v0}, Lcom/oneplus/gallery2/GalleryFragment;->onActivityStop()V

    goto :goto_0

    .line 48
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
