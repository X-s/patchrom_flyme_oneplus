.class Lcom/oneplus/gallery2/MediaSetPickerFragment$2;
.super Ljava/lang/Object;
.source "MediaSetPickerFragment.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/MediaSetPickerFragment;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/MediaSetPickerFragment;)V
    .locals 0

    .prologue
    .line 90
    iput-object p1, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$2;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

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
            "Ljava/lang/String;",
            ">;",
            "Lcom/oneplus/base/PropertyChangeEventArgs",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 94
    .local p2, "key":Lcom/oneplus/base/PropertyKey;, "Lcom/oneplus/base/PropertyKey<Ljava/lang/String;>;"
    .local p3, "e":Lcom/oneplus/base/PropertyChangeEventArgs;, "Lcom/oneplus/base/PropertyChangeEventArgs<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oneplus/gallery2/MediaSetPickerFragment$2;->this$0:Lcom/oneplus/gallery2/MediaSetPickerFragment;

    check-cast p1, Lcom/oneplus/gallery2/media/MediaSet;

    .end local p1    # "source":Lcom/oneplus/base/PropertySource;
    # invokes: Lcom/oneplus/gallery2/MediaSetPickerFragment;->onMediaSetCoverHashCodeChanged(Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    invoke-static {v0, p1, p3}, Lcom/oneplus/gallery2/MediaSetPickerFragment;->access$100(Lcom/oneplus/gallery2/MediaSetPickerFragment;Lcom/oneplus/gallery2/media/MediaSet;Lcom/oneplus/base/PropertyChangeEventArgs;)V

    .line 95
    return-void
.end method
