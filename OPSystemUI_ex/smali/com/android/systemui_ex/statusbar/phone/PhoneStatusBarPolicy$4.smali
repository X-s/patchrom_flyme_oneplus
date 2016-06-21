.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy$4;
.super Ljava/lang/Object;
.source "PhoneStatusBarPolicy.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/policy/CastController$Callback;


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
    .line 361
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCastDevicesChanged()V
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy$4;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->updateCast()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;->access$900(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarPolicy;)V

    .line 365
    return-void
.end method
