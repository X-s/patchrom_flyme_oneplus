.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$9;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui_ex/statusbar/policy/VolumeStateController$VolumeStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$9;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Z)V
    .locals 1
    .param p1, "showThreeKeyPanel"    # Z

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$9;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->showDoNotDisturbOnStatusBar()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$2500(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    .line 712
    return-void
.end method
