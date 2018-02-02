.class Lcom/oneplus/camera/location/UILocationManagerImpl$7;
.super Ljava/lang/Object;
.source "UILocationManagerImpl.java"

# interfaces
.implements Lcom/oneplus/base/EventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/camera/location/UILocationManagerImpl;->onInitialize()V
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
        "Lcom/oneplus/base/SettingsValueChangedEventArgs;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/location/UILocationManagerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/camera/location/UILocationManagerImpl;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$7;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/EventArgs;)V
    .locals 0
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p2, "key"    # Lcom/oneplus/base/EventKey;
    .param p3, "e"    # Lcom/oneplus/base/EventArgs;

    .prologue
    .line 240
    check-cast p3, Lcom/oneplus/base/SettingsValueChangedEventArgs;

    .end local p3    # "e":Lcom/oneplus/base/EventArgs;
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/camera/location/UILocationManagerImpl$7;->onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/SettingsValueChangedEventArgs;)V

    return-void
.end method

.method public onEventReceived(Lcom/oneplus/base/EventSource;Lcom/oneplus/base/EventKey;Lcom/oneplus/base/SettingsValueChangedEventArgs;)V
    .locals 3
    .param p1, "source"    # Lcom/oneplus/base/EventSource;
    .param p3, "e"    # Lcom/oneplus/base/SettingsValueChangedEventArgs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/base/EventSource;",
            "Lcom/oneplus/base/EventKey",
            "<",
            "Lcom/oneplus/base/SettingsValueChangedEventArgs;",
            ">;",
            "Lcom/oneplus/base/SettingsValueChangedEventArgs;",
            ")V"
        }
    .end annotation

    .prologue
    .line 242
    .local p2, "key":Lcom/oneplus/base/EventKey;, "Lcom/oneplus/base/EventKey<Lcom/oneplus/base/SettingsValueChangedEventArgs;>;"
    const-string/jumbo v1, "Location.Save"

    invoke-virtual {p3}, Lcom/oneplus/base/SettingsValueChangedEventArgs;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$7;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-static {v1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->-wrap0(Lcom/oneplus/camera/location/UILocationManagerImpl;)Lcom/oneplus/base/Settings;

    move-result-object v1

    const-string/jumbo v2, "Location.Save"

    invoke-virtual {v1, v2}, Lcom/oneplus/base/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 245
    .local v0, "isSavingLocation":Z
    if-eqz v0, :cond_1

    .line 246
    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$7;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-static {v1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->-wrap6(Lcom/oneplus/camera/location/UILocationManagerImpl;)V

    .line 240
    .end local v0    # "isSavingLocation":Z
    :cond_0
    :goto_0
    return-void

    .line 248
    .restart local v0    # "isSavingLocation":Z
    :cond_1
    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$7;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-static {v1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->-wrap7(Lcom/oneplus/camera/location/UILocationManagerImpl;)V

    goto :goto_0
.end method
