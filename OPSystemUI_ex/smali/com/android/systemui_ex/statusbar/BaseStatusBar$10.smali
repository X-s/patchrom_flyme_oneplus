.class Lcom/android/systemui_ex/statusbar/BaseStatusBar$10;
.super Ljava/lang/Object;
.source "BaseStatusBar.java"

# interfaces
.implements Lcom/android/systemui_ex/SwipeHelper$LongPressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui_ex/statusbar/BaseStatusBar;->getNotificationLongClicker()Lcom/android/systemui_ex/SwipeHelper$LongPressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)V
    .locals 0

    .prologue
    .line 1140
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/View;II)Z
    .locals 12
    .param p1, "v"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1143
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->dismissPopups()V

    .line 1145
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mState:I

    if-eq v5, v9, :cond_0

    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    iget v5, v5, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mState:I

    const/4 v10, 0x2

    if-ne v5, v10, :cond_1

    :cond_0
    move v5, v8

    .line 1185
    .end local p1    # "v":Landroid/view/View;
    :goto_0
    return v5

    .line 1149
    .restart local p1    # "v":Landroid/view/View;
    :cond_1
    instance-of v5, p1, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    if-nez v5, :cond_2

    move v5, v8

    .line 1150
    goto :goto_0

    .line 1152
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-nez v5, :cond_3

    .line 1153
    const-string v5, "StatusBar"

    const-string v9, "Trying to show notification guts, but not attached to window"

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 1154
    goto :goto_0

    .line 1157
    :cond_3
    iget-object v10, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    move-object v5, p1

    check-cast v5, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    # invokes: Lcom/android/systemui_ex/statusbar/BaseStatusBar;->inflateGuts(Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;)V
    invoke-static {v10, v5}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->access$1200(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;)V

    .line 1160
    const v5, 0x7f0f0116

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui_ex/statusbar/NotificationGuts;

    .line 1162
    .local v1, "guts":Lcom/android/systemui_ex/statusbar/NotificationGuts;
    if-nez v1, :cond_4

    move v5, v8

    .line 1164
    goto :goto_0

    .line 1168
    :cond_4
    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/NotificationGuts;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    .line 1169
    const-string v5, "StatusBar"

    const-string v9, "Trying to show notification guts, but already visible"

    invoke-static {v5, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 1170
    goto :goto_0

    .line 1173
    :cond_5
    invoke-virtual {v1, v8}, Lcom/android/systemui_ex/statusbar/NotificationGuts;->setVisibility(I)V

    .line 1174
    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/NotificationGuts;->getWidth()I

    move-result v5

    sub-int/2addr v5, p2

    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-double v2, v5

    .line 1175
    .local v2, "horz":D
    invoke-virtual {v1}, Lcom/android/systemui_ex/statusbar/NotificationGuts;->getActualHeight()I

    move-result v5

    sub-int/2addr v5, p3

    invoke-static {v5, p3}, Ljava/lang/Math;->max(II)I

    move-result v5

    int-to-double v6, v5

    .line 1176
    .local v6, "vert":D
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v4, v10

    .line 1177
    .local v4, "r":F
    const/4 v5, 0x0

    invoke-static {v1, p2, p3, v5, v4}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v0

    .line 1179
    .local v0, "a":Landroid/animation/Animator;
    const-wide/16 v10, 0x190

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1180
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    # getter for: Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mLinearOutSlowIn:Landroid/animation/TimeInterpolator;
    invoke-static {v5}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->access$1300(Lcom/android/systemui_ex/statusbar/BaseStatusBar;)Landroid/animation/TimeInterpolator;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1181
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1183
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    # setter for: Lcom/android/systemui_ex/statusbar/BaseStatusBar;->mNotificationGutsExposed:Lcom/android/systemui_ex/statusbar/NotificationGuts;
    invoke-static {v5, v1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->access$1402(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Lcom/android/systemui_ex/statusbar/NotificationGuts;)Lcom/android/systemui_ex/statusbar/NotificationGuts;

    .line 1184
    iget-object v5, p0, Lcom/android/systemui_ex/statusbar/BaseStatusBar$10;->this$0:Lcom/android/systemui_ex/statusbar/BaseStatusBar;

    check-cast p1, Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    # invokes: Lcom/android/systemui_ex/statusbar/BaseStatusBar;->startLongClickedNotificationSettings(Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;)V
    invoke-static {v5, p1}, Lcom/android/systemui_ex/statusbar/BaseStatusBar;->access$1500(Lcom/android/systemui_ex/statusbar/BaseStatusBar;Lcom/android/systemui_ex/statusbar/ExpandableNotificationRow;)V

    move v5, v9

    .line 1185
    goto :goto_0
.end method
