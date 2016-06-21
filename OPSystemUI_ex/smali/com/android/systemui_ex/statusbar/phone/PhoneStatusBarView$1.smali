.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView$1;
.super Ljava/lang/Object;
.source "PhoneStatusBarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->onAllPanelsCollapsed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView$1;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    .line 117
    return-void
.end method
