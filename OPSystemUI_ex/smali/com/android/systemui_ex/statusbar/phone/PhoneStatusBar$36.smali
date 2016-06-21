.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$36;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;
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
    .line 3767
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 3770
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->checkBarModes()V
    invoke-static {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$6300(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;)V

    .line 3771
    return-void
.end method
