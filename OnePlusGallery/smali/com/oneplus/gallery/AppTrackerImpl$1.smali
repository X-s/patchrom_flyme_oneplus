.class Lcom/oneplus/gallery/AppTrackerImpl$1;
.super Ljava/lang/Object;
.source "AppTrackerImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/gallery/AppTrackerImpl;->onInitialize()V
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
        "Lcom/oneplus/gallery/ActivityLaunchEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/gallery/AppTrackerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/gallery/AppTrackerImpl;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lcom/oneplus/gallery/AppTrackerImpl$1;->this$0:Lcom/oneplus/gallery/AppTrackerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/base/EventSource;
    .param p2, "x1"    # Lcom/oneplus/base/EventKey;
    .param p3, "x2"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 171
    check-cast p3, Lcom/oneplus/gallery/ActivityLaunchEventArgs;

    .end local p3    # "x2":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/gallery/AppTrackerImpl$1;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery/ActivityLaunchEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/gallery/ActivityLaunchEventArgs;)V
    .locals 5
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/gallery/ActivityLaunchEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/gallery/ActivityLaunchEventArgs;",
            ">;",
            "Lcom/oneplus/gallery/ActivityLaunchEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/gallery/ActivityLaunchEventArgs;>;"
    const/4 v4, 0x0

    .line 175
    iget-object v0, p0, Lcom/oneplus/gallery/AppTrackerImpl$1;->this$0:Lcom/oneplus/gallery/AppTrackerImpl;

    const-string v1, "Gallery.Launch"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/oneplus/gallery/ActivityLaunchEventArgs;->getLaunchType()Lcom/oneplus/gallery/ActivityLaunchType;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v4, v2}, Lcom/oneplus/gallery/AppTrackerImpl;->createRecord(Ljava/lang/String;I[Ljava/lang/Object;)Z

    .line 176
    return-void
.end method
