.class Lcom/oneplus/camera/location/UILocationManagerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "UILocationManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/camera/location/UILocationManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/camera/location/UILocationManagerImpl;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$1;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$1;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    iget-object v1, p0, Lcom/oneplus/camera/location/UILocationManagerImpl$1;->this$0:Lcom/oneplus/camera/location/UILocationManagerImpl;

    invoke-virtual {v1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    # invokes: Lcom/oneplus/camera/location/UILocationManagerImpl;->onSystemLocationModeChanged(I)V
    invoke-static {v0, v1}, Lcom/oneplus/camera/location/UILocationManagerImpl;->access$000(Lcom/oneplus/camera/location/UILocationManagerImpl;I)V

    .line 56
    return-void
.end method
