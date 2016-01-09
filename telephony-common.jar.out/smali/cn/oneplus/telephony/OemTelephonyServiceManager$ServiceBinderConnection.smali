.class final Lcn/oneplus/telephony/OemTelephonyServiceManager$ServiceBinderConnection;
.super Ljava/lang/Object;
.source "OemTelephonyServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/oneplus/telephony/OemTelephonyServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceBinderConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/oneplus/telephony/OemTelephonyServiceManager;


# direct methods
.method private constructor <init>(Lcn/oneplus/telephony/OemTelephonyServiceManager;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcn/oneplus/telephony/OemTelephonyServiceManager$ServiceBinderConnection;->this$0:Lcn/oneplus/telephony/OemTelephonyServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/oneplus/telephony/OemTelephonyServiceManager;Lcn/oneplus/telephony/OemTelephonyServiceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/oneplus/telephony/OemTelephonyServiceManager;
    .param p2, "x1"    # Lcn/oneplus/telephony/OemTelephonyServiceManager$1;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Lcn/oneplus/telephony/OemTelephonyServiceManager$ServiceBinderConnection;-><init>(Lcn/oneplus/telephony/OemTelephonyServiceManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 81
    iget-object v0, p0, Lcn/oneplus/telephony/OemTelephonyServiceManager$ServiceBinderConnection;->this$0:Lcn/oneplus/telephony/OemTelephonyServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service bound on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcn/oneplus/telephony/OemTelephonyServiceManager;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcn/oneplus/telephony/OemTelephonyServiceManager;->access$000(Lcn/oneplus/telephony/OemTelephonyServiceManager;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcn/oneplus/telephony/OemTelephonyServiceManager$ServiceBinderConnection;->this$0:Lcn/oneplus/telephony/OemTelephonyServiceManager;

    invoke-static {p2}, Lcn/oneplus/telephony/IOemTelephonyService$Stub;->asInterface(Landroid/os/IBinder;)Lcn/oneplus/telephony/IOemTelephonyService;

    move-result-object v1

    # setter for: Lcn/oneplus/telephony/OemTelephonyServiceManager;->mServiceInterface:Lcn/oneplus/telephony/IOemTelephonyService;
    invoke-static {v0, v1}, Lcn/oneplus/telephony/OemTelephonyServiceManager;->access$102(Lcn/oneplus/telephony/OemTelephonyServiceManager;Lcn/oneplus/telephony/IOemTelephonyService;)Lcn/oneplus/telephony/IOemTelephonyService;

    .line 84
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 88
    iget-object v0, p0, Lcn/oneplus/telephony/OemTelephonyServiceManager$ServiceBinderConnection;->this$0:Lcn/oneplus/telephony/OemTelephonyServiceManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service unbound on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcn/oneplus/telephony/OemTelephonyServiceManager;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcn/oneplus/telephony/OemTelephonyServiceManager;->access$000(Lcn/oneplus/telephony/OemTelephonyServiceManager;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcn/oneplus/telephony/OemTelephonyServiceManager$ServiceBinderConnection;->this$0:Lcn/oneplus/telephony/OemTelephonyServiceManager;

    const/4 v1, 0x0

    # setter for: Lcn/oneplus/telephony/OemTelephonyServiceManager;->mServiceInterface:Lcn/oneplus/telephony/IOemTelephonyService;
    invoke-static {v0, v1}, Lcn/oneplus/telephony/OemTelephonyServiceManager;->access$102(Lcn/oneplus/telephony/OemTelephonyServiceManager;Lcn/oneplus/telephony/IOemTelephonyService;)Lcn/oneplus/telephony/IOemTelephonyService;

    .line 91
    return-void
.end method
