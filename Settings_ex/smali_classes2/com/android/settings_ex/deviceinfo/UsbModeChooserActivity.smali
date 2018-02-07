.class public Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;
.super Landroid/app/Activity;
.source "UsbModeChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$1;
    }
.end annotation


# static fields
.field public static final DEFAULT_MODES:[I


# instance fields
.field private mBackend:Lcom/android/settings_ex/deviceinfo/UsbBackend;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

.field private mEnforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

.field private mLayoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method static synthetic -get0(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)Lcom/android/settings_ex/deviceinfo/UsbBackend;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings_ex/deviceinfo/UsbBackend;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    const/4 v1, 0x2

    .line 56
    const/4 v2, 0x4

    .line 57
    const/4 v3, 0x6

    .line 58
    const/16 v4, 0x8

    .line 53
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    .line 51
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    new-instance v0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$1;-><init>(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    return-void
.end method

.method private static getSummary(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 197
    packed-switch p0, :pswitch_data_0

    .line 209
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 199
    :pswitch_1
    const v0, 0x7f0e0f49

    return v0

    .line 201
    :pswitch_2
    const v0, 0x7f0e0f4d

    return v0

    .line 203
    :pswitch_3
    const v0, 0x7f0e0f4f

    return v0

    .line 205
    :pswitch_4
    const v0, 0x7f0e0f51

    return v0

    .line 207
    :pswitch_5
    const v0, 0x7f0e0f54

    return v0

    .line 197
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private static getTitle(I)I
    .locals 1
    .param p0, "mode"    # I

    .prologue
    .line 213
    packed-switch p0, :pswitch_data_0

    .line 225
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 215
    :pswitch_1
    const v0, 0x7f0e0f48

    return v0

    .line 217
    :pswitch_2
    const v0, 0x7f0e0f4c

    return v0

    .line 219
    :pswitch_3
    const v0, 0x7f0e0f4e

    return v0

    .line 221
    :pswitch_4
    const v0, 0x7f0e0f50

    return v0

    .line 223
    :pswitch_5
    const v0, 0x7f0e0f53

    return v0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private inflateOption(IZLandroid/widget/LinearLayout;Z)V
    .locals 8
    .param p1, "mode"    # I
    .param p2, "selected"    # Z
    .param p3, "container"    # Landroid/widget/LinearLayout;
    .param p4, "disallowedByAdmin"    # Z

    .prologue
    const/4 v7, 0x0

    .line 143
    const-string/jumbo v5, "persist.sys.sim.activate"

    .line 142
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 145
    .local v0, "isSimCardInserted":Z
    const-string/jumbo v5, "persist.sys.usb.security"

    .line 144
    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 147
    .local v1, "isUsbSecurityEnable":Z
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f04016e

    invoke-virtual {v5, v6, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 149
    .local v4, "v":Landroid/view/View;
    const v5, 0x1020016

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 150
    .local v3, "titleView":Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->getTitle(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 151
    const v5, 0x1020010

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 152
    .local v2, "summaryView":Landroid/widget/TextView;
    invoke-static {p1}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->getSummary(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 154
    if-eqz p4, :cond_0

    .line 155
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v5, :cond_2

    .line 156
    invoke-direct {p0, v4, v3, v2}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->setDisabledByAdmin(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 162
    :cond_0
    new-instance v5, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;

    invoke-direct {v5, p0, p4, p1}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$4;-><init>(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;ZI)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v5, v4

    .line 177
    check-cast v5, Landroid/widget/Checkable;

    invoke-interface {v5, p2}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 178
    if-nez v0, :cond_1

    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {v4, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 182
    :cond_1
    invoke-virtual {p3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 141
    return-void

    .line 158
    :cond_2
    return-void
.end method

.method private setDisabledByAdmin(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 4
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "titleView"    # Landroid/widget/TextView;
    .param p3, "summaryView"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x0

    .line 186
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v1, :cond_0

    .line 187
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 188
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 189
    const v1, 0x7f1102b5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 190
    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 191
    .local v0, "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    aget-object v1, v0, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 192
    const/high16 v2, 0x7f0b0000

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->getColor(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    .line 191
    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 185
    .end local v0    # "compoundDrawables":[Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 88
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    const v4, 0x7f0e0f52

    .line 88
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 90
    const v4, 0x7f0401f7

    .line 88
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 91
    new-instance v4, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$2;-><init>(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)V

    .line 88
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 97
    new-instance v4, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$3;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity$3;-><init>(Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;)V

    const v5, 0x7f0e0592

    .line 88
    invoke-virtual {v3, v5, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    .line 105
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 107
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mDialog:Landroid/app/AlertDialog;

    const v4, 0x7f11034f

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 110
    .local v0, "container":Landroid/widget/LinearLayout;
    const-string/jumbo v3, "no_usb_file_transfer"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 109
    invoke-static {p0, v3, v4}, Lcom/android/settings_exlib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mEnforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 111
    new-instance v3, Lcom/android/settings_ex/deviceinfo/UsbBackend;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/deviceinfo/UsbBackend;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings_ex/deviceinfo/UsbBackend;

    .line 112
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings_ex/deviceinfo/UsbBackend;

    invoke-virtual {v3}, Lcom/android/settings_ex/deviceinfo/UsbBackend;->getCurrentMode()I

    move-result v1

    .line 114
    .local v1, "current":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 115
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings_ex/deviceinfo/UsbBackend;

    sget-object v4, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/deviceinfo/UsbBackend;->isModeSupported(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    iget-object v3, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings_ex/deviceinfo/UsbBackend;

    sget-object v4, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/android/settings_ex/deviceinfo/UsbBackend;->isModeDisallowedBySystem(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 114
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 118
    const v4, 0x7f0c003e

    .line 117
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 119
    sget-object v3, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v3, v3, v2

    .line 113
    const/16 v4, 0x8

    .line 119
    if-eq v4, v3, :cond_0

    .line 120
    :cond_2
    sget-object v3, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v4, v3, v2

    sget-object v3, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v3, v3, v2

    if-ne v1, v3, :cond_3

    const/4 v3, 0x1

    .line 121
    :goto_2
    iget-object v5, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mBackend:Lcom/android/settings_ex/deviceinfo/UsbBackend;

    sget-object v6, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->DEFAULT_MODES:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Lcom/android/settings_ex/deviceinfo/UsbBackend;->isModeDisallowed(I)Z

    move-result v5

    .line 120
    invoke-direct {p0, v4, v3, v0, v5}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->inflateOption(IZLandroid/widget/LinearLayout;Z)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 82
    :cond_4
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/deviceinfo/UsbModeChooserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 137
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 135
    return-void
.end method
