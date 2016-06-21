.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$15;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui_ex/qs/QSTile$Host$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->makeStatusBarView()Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

.field final synthetic val$qsh:Lcom/android/systemui_ex/statusbar/phone/QSTileHost;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Lcom/android/systemui_ex/statusbar/phone/QSTileHost;)V
    .locals 0

    .prologue
    .line 1190
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$15;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$15;->val$qsh:Lcom/android/systemui_ex/statusbar/phone/QSTileHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
