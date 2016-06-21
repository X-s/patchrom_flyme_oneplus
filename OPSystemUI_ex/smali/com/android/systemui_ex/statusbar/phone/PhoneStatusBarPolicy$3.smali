.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy$3;
.super Landroid/os/storage/StorageEventListener;
.source "PhoneStatusBarPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;-><init>(Landroid/content/Context;Lcom/android/systemui_ex/statusbar/policy/CastController;)V
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
    .line 193
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy$3;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy$3;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->updateSDCardtoAbsent()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->access$800(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 197
    return-void
.end method
