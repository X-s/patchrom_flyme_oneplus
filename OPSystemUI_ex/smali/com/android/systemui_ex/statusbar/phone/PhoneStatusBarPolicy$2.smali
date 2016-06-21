.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy$2;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 126
    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->DEBUG:Z
    invoke-static {}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "PhoneStatusBarPolicy"

    const-string v1, "updateCast: hiding icon NOW"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy$2;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;

    # getter for: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->mService:Landroid/app/StatusBarManager;
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->access$700(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;)Landroid/app/StatusBarManager;

    move-result-object v0

    const-string v1, "cast"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 128
    return-void
.end method
