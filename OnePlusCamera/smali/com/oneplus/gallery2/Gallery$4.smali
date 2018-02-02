.class Lcom/oneplus/gallery2/Gallery$4;
.super Ljava/lang/Object;
.source "Gallery.java"

# interfaces
.implements Lcom/oneplus/base/PropertyChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/Gallery;
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
.field final synthetic this$0:Lcom/oneplus/gallery2/Gallery;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/Gallery;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/gallery2/Gallery$4;->this$0:Lcom/oneplus/gallery2/Gallery;

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyChanged(Lcom/oneplus/base/PropertySource;Lcom/oneplus/base/PropertyKey;Lcom/oneplus/base/PropertyChangeEventArgs;)V
    .locals 3
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
    .line 243
    iget-object v1, p0, Lcom/oneplus/gallery2/Gallery$4;->this$0:Lcom/oneplus/gallery2/Gallery;

    sget-object v2, Lcom/oneplus/gallery2/Gallery;->PROP_ACTIVITY_STATE:Lcom/oneplus/base/PropertyKey;

    invoke-virtual {p3}, Lcom/oneplus/base/PropertyChangeEventArgs;->getNewValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/base/BaseActivity$State;

    invoke-static {v1, v2, v0}, Lcom/oneplus/gallery2/Gallery;->access$4(Lcom/oneplus/gallery2/Gallery;Lcom/oneplus/base/PropertyKey;Ljava/lang/Object;)Z

    .line 244
    return-void
.end method
