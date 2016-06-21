.class public Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;
.super Landroid/widget/LinearLayout;
.source "DemoStatusIcons.java"

# interfaces
.implements Lcom/android/systemui_ex/DemoMode;


# instance fields
.field private mDemoMode:Z

.field private final mIconSize:I

.field private final mStatusIcons:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/widget/LinearLayout;I)V
    .locals 2
    .param p1, "statusIcons"    # Landroid/widget/LinearLayout;
    .param p2, "iconSize"    # I

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 41
    iput p2, p0, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->mIconSize:I

    .line 43
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->setOrientation(I)V

    .line 45
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->setGravity(I)V

    .line 46
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 47
    .local v0, "p":Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 48
    return-void
.end method

.method private updateSlot(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconPkg"    # Ljava/lang/String;
    .param p3, "iconId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 145
    iget-boolean v1, p0, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    if-nez v1, :cond_0

    .line 174
    :goto_0
    return-void

    .line 146
    :cond_0
    const/4 v8, -0x1

    .line 147
    .local v8, "removeIndex":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->getChildCount()I

    move-result v1

    if-ge v7, v1, :cond_1

    .line 148
    invoke-virtual {p0, v7}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    .line 149
    .local v9, "v":Lcom/android/systemui_ex/statusbar/StatusBarIconView;
    invoke-virtual {v9}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 150
    if-nez p3, :cond_2

    .line 151
    move v8, v7

    .line 163
    .end local v9    # "v":Lcom/android/systemui_ex/statusbar/StatusBarIconView;
    :cond_1
    if-nez p3, :cond_4

    .line 164
    const/4 v1, -0x1

    if-eq v8, v1, :cond_4

    .line 165
    invoke-virtual {p0, v8}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->removeViewAt(I)V

    goto :goto_0

    .line 154
    .restart local v9    # "v":Lcom/android/systemui_ex/statusbar/StatusBarIconView;
    :cond_2
    invoke-virtual {v9}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    .line 155
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    iput-object p2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->iconPackage:Ljava/lang/String;

    .line 156
    iput p3, v0, Lcom/android/internal/statusbar/StatusBarIcon;->iconId:I

    .line 157
    invoke-virtual {v9, v0}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 158
    invoke-virtual {v9}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->updateDrawable()V

    goto :goto_0

    .line 147
    .end local v0    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 169
    .end local v9    # "v":Lcom/android/systemui_ex/statusbar/StatusBarIconView;
    :cond_4
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v6, "Demo"

    move-object v1, p2

    move v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 170
    .restart local v0    # "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    new-instance v9, Lcom/android/systemui_ex/statusbar/StatusBarIconView;

    invoke-virtual {p0}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v9, v1, v10, v10}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 171
    .restart local v9    # "v":Lcom/android/systemui_ex/statusbar/StatusBarIconView;
    invoke-virtual {v9, p1}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->setTag(Ljava/lang/Object;)V

    .line 172
    invoke-virtual {v9, v0}, Lcom/android/systemui_ex/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 173
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, p0, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->mIconSize:I

    iget v3, p0, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->mIconSize:I

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v9, v4, v1}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 19
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;

    .prologue
    .line 52
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    move/from16 v17, v0

    if-nez v17, :cond_1

    const-string v17, "enter"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 53
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    .line 54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 55
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->setVisibility(I)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    const-string v17, "exit"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 57
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    .line 58
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->mStatusIcons:Landroid/widget/LinearLayout;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 59
    const/16 v17, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->setVisibility(I)V

    goto :goto_0

    .line 60
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->mDemoMode:Z

    move/from16 v17, v0

    if-eqz v17, :cond_0

    const-string v17, "status"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 61
    const-string v17, "volume"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 62
    .local v15, "volume":Ljava/lang/String;
    if-eqz v15, :cond_3

    .line 63
    const-string v17, "vibrate"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    const v9, 0x7f0202a7

    .line 65
    .local v9, "iconId":I
    :goto_1
    const-string v17, "volume"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    .end local v9    # "iconId":I
    :cond_3
    const-string v17, "zen"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 68
    .local v16, "zen":Ljava/lang/String;
    if-eqz v16, :cond_4

    .line 69
    const-string v17, "important"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const v9, 0x7f02023a

    .line 72
    .restart local v9    # "iconId":I
    :goto_2
    const-string v17, "zen"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 74
    .end local v9    # "iconId":I
    :cond_4
    const-string v17, "bluetooth"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 75
    .local v4, "bt":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 76
    const-string v17, "disconnected"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    const v9, 0x7f020210

    .line 79
    .restart local v9    # "iconId":I
    :goto_3
    const-string v17, "bluetooth"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 81
    .end local v9    # "iconId":I
    :cond_5
    const-string v17, "location"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 82
    .local v10, "location":Ljava/lang/String;
    if-eqz v10, :cond_6

    .line 83
    const-string v17, "show"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    const v9, 0x7f02023d

    .line 85
    .restart local v9    # "iconId":I
    :goto_4
    const-string v17, "location"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 87
    .end local v9    # "iconId":I
    :cond_6
    const-string v17, "alarm"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, "alarm":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 89
    const-string v17, "show"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_15

    const v9, 0x7f02020e

    .line 91
    .restart local v9    # "iconId":I
    :goto_5
    const-string v17, "alarm_clock"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    .end local v9    # "iconId":I
    :cond_7
    const-string v17, "sync"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 94
    .local v13, "sync":Ljava/lang/String;
    if-eqz v13, :cond_8

    .line 95
    const-string v17, "show"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    const v9, 0x7f020410

    .line 97
    .restart local v9    # "iconId":I
    :goto_6
    const-string v17, "sync_active"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    .end local v9    # "iconId":I
    :cond_8
    const-string v17, "tty"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 100
    .local v14, "tty":Ljava/lang/String;
    if-eqz v14, :cond_9

    .line 101
    const-string v17, "show"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    const v9, 0x7f020411

    .line 103
    .restart local v9    # "iconId":I
    :goto_7
    const-string v17, "tty"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    .end local v9    # "iconId":I
    :cond_9
    const-string v17, "eri"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, "eri":Ljava/lang/String;
    if-eqz v6, :cond_a

    .line 107
    const-string v17, "show"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    const v9, 0x7f0202a8

    .line 109
    .restart local v9    # "iconId":I
    :goto_8
    const-string v17, "cdma_eri"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    .end local v9    # "iconId":I
    :cond_a
    const-string v17, "mute"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 112
    .local v11, "mute":Ljava/lang/String;
    if-eqz v11, :cond_b

    .line 113
    const-string v17, "show"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    const v9, 0x1080076

    .line 115
    .restart local v9    # "iconId":I
    :goto_9
    const-string v17, "mute"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    .end local v9    # "iconId":I
    :cond_b
    const-string v17, "speakerphone"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 118
    .local v12, "speakerphone":Ljava/lang/String;
    if-eqz v12, :cond_c

    .line 119
    const-string v17, "show"

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const v9, 0x1080087

    .line 121
    .restart local v9    # "iconId":I
    :goto_a
    const-string v17, "speakerphone"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    .end local v9    # "iconId":I
    :cond_c
    const-string v17, "cast"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "cast":Ljava/lang/String;
    if-eqz v5, :cond_d

    .line 125
    const-string v17, "show"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    const v9, 0x7f02020f

    .line 126
    .restart local v9    # "iconId":I
    :goto_b
    const-string v17, "cast"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 128
    .end local v9    # "iconId":I
    :cond_d
    const-string v17, "hotspot"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 129
    .local v8, "hotspot":Ljava/lang/String;
    if-eqz v8, :cond_e

    .line 130
    const-string v17, "show"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    const v9, 0x7f02023c

    .line 131
    .restart local v9    # "iconId":I
    :goto_c
    const-string v17, "hotspot"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    .line 135
    .end local v9    # "iconId":I
    :cond_e
    const-string v17, "headset"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 136
    .local v7, "headset":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 137
    const-string v17, "show"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    const v9, 0x7f02023c

    .line 138
    .restart local v9    # "iconId":I
    :goto_d
    const-string v17, "headset"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2, v9}, Lcom/android/systemui_ex/statusbar/phone/DemoStatusIcons;->updateSlot(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 63
    .end local v3    # "alarm":Ljava/lang/String;
    .end local v4    # "bt":Ljava/lang/String;
    .end local v5    # "cast":Ljava/lang/String;
    .end local v6    # "eri":Ljava/lang/String;
    .end local v7    # "headset":Ljava/lang/String;
    .end local v8    # "hotspot":Ljava/lang/String;
    .end local v9    # "iconId":I
    .end local v10    # "location":Ljava/lang/String;
    .end local v11    # "mute":Ljava/lang/String;
    .end local v12    # "speakerphone":Ljava/lang/String;
    .end local v13    # "sync":Ljava/lang/String;
    .end local v14    # "tty":Ljava/lang/String;
    .end local v16    # "zen":Ljava/lang/String;
    :cond_f
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 69
    .restart local v16    # "zen":Ljava/lang/String;
    :cond_10
    const-string v17, "none"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    const v9, 0x7f02023e

    goto/16 :goto_2

    :cond_11
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 76
    .restart local v4    # "bt":Ljava/lang/String;
    :cond_12
    const-string v17, "connected"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const v9, 0x7f020211

    goto/16 :goto_3

    :cond_13
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 83
    .restart local v10    # "location":Ljava/lang/String;
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 89
    .restart local v3    # "alarm":Ljava/lang/String;
    :cond_15
    const/4 v9, 0x0

    goto/16 :goto_5

    .line 95
    .restart local v13    # "sync":Ljava/lang/String;
    :cond_16
    const/4 v9, 0x0

    goto/16 :goto_6

    .line 101
    .restart local v14    # "tty":Ljava/lang/String;
    :cond_17
    const/4 v9, 0x0

    goto/16 :goto_7

    .line 107
    .restart local v6    # "eri":Ljava/lang/String;
    :cond_18
    const/4 v9, 0x0

    goto/16 :goto_8

    .line 113
    .restart local v11    # "mute":Ljava/lang/String;
    :cond_19
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 119
    .restart local v12    # "speakerphone":Ljava/lang/String;
    :cond_1a
    const/4 v9, 0x0

    goto/16 :goto_a

    .line 125
    .restart local v5    # "cast":Ljava/lang/String;
    :cond_1b
    const/4 v9, 0x0

    goto/16 :goto_b

    .line 130
    .restart local v8    # "hotspot":Ljava/lang/String;
    :cond_1c
    const/4 v9, 0x0

    goto :goto_c

    .line 137
    .restart local v7    # "headset":Ljava/lang/String;
    :cond_1d
    const/4 v9, 0x0

    goto :goto_d
.end method
