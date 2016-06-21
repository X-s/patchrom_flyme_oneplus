.class Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$21;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 1525
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar$21;->this$0:Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->handleLongPressBackRecents(Landroid/view/View;)V
    invoke-static {v0, p1}, Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;->access$4400(Lcom/android/systemui_ex/statusbar/phone/PhoneStatusBar;Landroid/view/View;)V

    .line 1529
    const/4 v0, 0x1

    return v0
.end method
