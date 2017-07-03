.class Lcom/oneplus/gallery2/location/AutoAddressClassifier$3;
.super Ljava/lang/Object;
.source "AutoAddressClassifier.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/gallery2/location/AutoAddressClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/base/EventHandler",
        "<",
        "Lcom/oneplus/base/EventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery2/location/AutoAddressClassifier;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery2/location/AutoAddressClassifier;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier$3;->this$0:Lcom/oneplus/gallery2/location/AutoAddressClassifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 1
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/base/EventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/EventArgs;",
            ">;",
            "Lcom/oneplus/base/EventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/base/EventArgs;>;"
    iget-object v0, p0, Lcom/oneplus/gallery2/location/AutoAddressClassifier$3;->this$0:Lcom/oneplus/gallery2/location/AutoAddressClassifier;

    # invokes: Lcom/oneplus/gallery2/location/AutoAddressClassifier;->onInternalClassifierUpdated()V
    invoke-static {v0}, Lcom/oneplus/gallery2/location/AutoAddressClassifier;->access$200(Lcom/oneplus/gallery2/location/AutoAddressClassifier;)V

    .line 49
    return-void
.end method
