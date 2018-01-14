.class Lcom/oneplus/threekey/ThreeKeyBase$ThreeKeyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ThreeKeyBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/threekey/ThreeKeyBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreeKeyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/threekey/ThreeKeyBase;


# direct methods
.method private constructor <init>(Lcom/oneplus/threekey/ThreeKeyBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/threekey/ThreeKeyBase;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyBase$ThreeKeyBroadcastReceiver;->this$0:Lcom/oneplus/threekey/ThreeKeyBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/threekey/ThreeKeyBase;Lcom/oneplus/threekey/ThreeKeyBase$ThreeKeyBroadcastReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/threekey/ThreeKeyBase;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/threekey/ThreeKeyBase$ThreeKeyBroadcastReceiver;-><init>(Lcom/oneplus/threekey/ThreeKeyBase;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.oem.intent.action.THREE_KEY_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 79
    const-string/jumbo v2, "switch_state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 80
    .local v1, "state":I
    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyBase$ThreeKeyBroadcastReceiver;->this$0:Lcom/oneplus/threekey/ThreeKeyBase;

    invoke-virtual {v2, v1}, Lcom/oneplus/threekey/ThreeKeyBase;->setSwitchState(I)V

    .line 76
    .end local v1    # "state":I
    :cond_0
    return-void
.end method
