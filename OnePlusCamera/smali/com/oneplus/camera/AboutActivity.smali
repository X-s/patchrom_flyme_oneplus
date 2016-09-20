.class public final Lcom/oneplus/camera/AboutActivity;
.super Landroid/app/Activity;
.source "AboutActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final EXTRA_START_MODE:Ljava/lang/String; = "StartMode"

.field private static final TAG:Ljava/lang/String; = "AboutActivity"


# instance fields
.field private m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

.field private m_StartMode:Lcom/oneplus/camera/StartMode;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/camera/AboutActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/camera/AboutActivity;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/oneplus/camera/AboutActivity;->isSecureMode()Z

    move-result v0

    return v0
.end method

.method private isSecureMode()Z
    .locals 3

    .prologue
    .line 38
    iget-object v1, p0, Lcom/oneplus/camera/AboutActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    if-nez v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/oneplus/camera/AboutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 41
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "StartMode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/camera/StartMode;

    iput-object v1, p0, Lcom/oneplus/camera/AboutActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    .line 43
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/camera/AboutActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    sget-object v2, Lcom/oneplus/camera/StartMode;->SECURE_PHOTO:Lcom/oneplus/camera/StartMode;

    if-ne v1, v2, :cond_1

    .line 44
    const/4 v1, 0x1

    .line 46
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerReceivers()V
    .locals 4

    .prologue
    .line 128
    invoke-direct {p0}, Lcom/oneplus/camera/AboutActivity;->isSecureMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/oneplus/camera/AboutActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 132
    const-string v2, "AboutActivity"

    const-string v3, "registerReceivers() - Shutdown receiver"

    invoke-static {v2, v3}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v2, Lcom/oneplus/camera/AboutActivity$1;

    invoke-direct {v2, p0}, Lcom/oneplus/camera/AboutActivity$1;-><init>(Lcom/oneplus/camera/AboutActivity;)V

    iput-object v2, p0, Lcom/oneplus/camera/AboutActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 147
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, "filterScreenOff":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/oneplus/camera/AboutActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/oneplus/camera/AboutActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 152
    .local v1, "filterUserUnlock":Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/oneplus/camera/AboutActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/oneplus/camera/AboutActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 155
    .end local v0    # "filterScreenOff":Landroid/content/IntentFilter;
    .end local v1    # "filterUserUnlock":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/oneplus/camera/AboutActivity;->isSecureMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/oneplus/camera/AboutActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 165
    const-string v0, "AboutActivity"

    const-string v1, "unregisterReceivers() - Shutdown receiver"

    invoke-static {v0, v1}, Lcom/oneplus/base/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/oneplus/camera/AboutActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/oneplus/camera/AboutActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 167
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/camera/AboutActivity;->m_ShutdownReceiver:Landroid/content/BroadcastReceiver;

    .line 170
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oneplus/camera/AgreementActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 120
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "StartMode"

    iget-object v2, p0, Lcom/oneplus/camera/AboutActivity;->m_StartMode:Lcom/oneplus/camera/StartMode;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0, v0}, Lcom/oneplus/camera/AboutActivity;->startActivity(Landroid/content/Intent;)V

    .line 122
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/oneplus/camera/AboutActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 60
    .local v3, "extras":Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/oneplus/camera/AboutActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 61
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 64
    invoke-virtual {v0, v9}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/camera/AboutActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x400

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 69
    invoke-direct {p0}, Lcom/oneplus/camera/AboutActivity;->isSecureMode()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/oneplus/camera/AboutActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x80000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 73
    :cond_1
    invoke-direct {p0}, Lcom/oneplus/camera/AboutActivity;->registerReceivers()V

    .line 75
    const/high16 v6, 0x7f030000

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/AboutActivity;->setContentView(I)V

    .line 77
    const/4 v5, 0x0

    .line 79
    .local v5, "versionName":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/camera/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Lcom/oneplus/camera/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    iget-object v5, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :goto_0
    const v6, 0x7f0b0003

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 85
    .local v4, "version":Landroid/widget/TextView;
    const v6, 0x7f09003b

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v5, v7, v10

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/camera/AboutActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    const v6, 0x7f0b0004

    invoke-virtual {p0, v6}, Lcom/oneplus/camera/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 88
    .local v1, "agreement":Landroid/widget/TextView;
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    return-void

    .line 80
    .end local v1    # "agreement":Landroid/widget/TextView;
    .end local v4    # "version":Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/oneplus/camera/AboutActivity;->unregisterReceivers()V

    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 98
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 105
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 106
    .local v0, "itemId":I
    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/oneplus/camera/AboutActivity;->finish()V

    .line 109
    const/4 v1, 0x1

    .line 111
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p2}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method
