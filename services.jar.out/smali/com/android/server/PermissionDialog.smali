.class public Lcom/android/server/PermissionDialog;
.super Lcom/android/server/BasePermissionDialog;
.source "PermissionDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PermissionDialog$1;
    }
.end annotation


# static fields
.field static final ALLOWED_REQ:I = 0x2

.field static final IGNORED_REQ:I = 0x4

.field static final IGNORED_REQ_TIMEOUT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "PermInfo"

.field static final TIMEOUT_WAIT:J = 0x3a98L


# instance fields
.field private checkSta:Landroid/widget/CheckBox;

.field private contId:Landroid/content/Context;

.field private inputId:I

.field private final inputPackage:Ljava/lang/String;

.field private final mDef:I

.field final mOpLabels:[Ljava/lang/CharSequence;

.field private final myHandle:Landroid/os/Handler;

.field private final opsServ:Lcom/android/server/AppOpsService;

.field private viewId:Landroid/view/View;


# direct methods
.method static synthetic -get0(Lcom/android/server/PermissionDialog;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PermissionDialog;->checkSta:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/PermissionDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/server/PermissionDialog;->inputId:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/PermissionDialog;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PermissionDialog;->inputPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/PermissionDialog;)I
    .locals 1

    iget v0, p0, Lcom/android/server/PermissionDialog;->mDef:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/PermissionDialog;)Lcom/android/server/AppOpsService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/PermissionDialog;->opsServ:Lcom/android/server/AppOpsService;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/AppOpsService;IILjava/lang/String;)V
    .locals 10
    .param p1, "contextId"    # Landroid/content/Context;
    .param p2, "opsService"    # Lcom/android/server/AppOpsService;
    .param p3, "defInf"    # I
    .param p4, "idInfo"    # I
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x4

    .line 62
    invoke-direct {p0, p1}, Lcom/android/server/BasePermissionDialog;-><init>(Landroid/content/Context;)V

    .line 103
    new-instance v5, Lcom/android/server/PermissionDialog$1;

    invoke-direct {v5, p0}, Lcom/android/server/PermissionDialog$1;-><init>(Lcom/android/server/PermissionDialog;)V

    iput-object v5, p0, Lcom/android/server/PermissionDialog;->myHandle:Landroid/os/Handler;

    .line 63
    iput-object p2, p0, Lcom/android/server/PermissionDialog;->opsServ:Lcom/android/server/AppOpsService;

    .line 64
    iput-object p5, p0, Lcom/android/server/PermissionDialog;->inputPackage:Ljava/lang/String;

    .line 65
    iput-object p1, p0, Lcom/android/server/PermissionDialog;->contId:Landroid/content/Context;

    .line 66
    iput p3, p0, Lcom/android/server/PermissionDialog;->mDef:I

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 68
    .local v2, "rId":Landroid/content/res/Resources;
    iput p4, p0, Lcom/android/server/PermissionDialog;->inputId:I

    .line 70
    const v5, 0x107000e

    .line 69
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/PermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    .line 71
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/android/server/PermissionDialog;->setCancelable(Z)V

    .line 73
    const v5, 0x1040623

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 74
    iget-object v6, p0, Lcom/android/server/PermissionDialog;->myHandle:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 72
    const/4 v7, -0x1

    invoke-virtual {p0, v7, v5, v6}, Lcom/android/server/PermissionDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 76
    const v5, 0x1040624

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 77
    iget-object v6, p0, Lcom/android/server/PermissionDialog;->myHandle:Landroid/os/Handler;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 75
    const/4 v7, -0x2

    invoke-virtual {p0, v7, v5, v6}, Lcom/android/server/PermissionDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 78
    const v5, 0x1040622

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/PermissionDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/server/PermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 80
    .local v1, "paraDef":Landroid/view/WindowManager$LayoutParams;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Permission: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PermissionDialog;->inputPackage:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/android/server/PermissionDialog;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 81
    iget v5, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v5, v5, 0x110

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 83
    invoke-virtual {p0}, Lcom/android/server/PermissionDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/server/PermissionDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 85
    const v6, 0x109009f

    .line 84
    invoke-virtual {v5, v6, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/PermissionDialog;->viewId:Landroid/view/View;

    .line 86
    iget-object v5, p0, Lcom/android/server/PermissionDialog;->viewId:Landroid/view/View;

    .line 87
    const v6, 0x10203ce

    .line 86
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 88
    .local v3, "textId":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/server/PermissionDialog;->viewId:Landroid/view/View;

    .line 89
    const v6, 0x10203d0

    .line 88
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/android/server/PermissionDialog;->checkSta:Landroid/widget/CheckBox;

    .line 90
    iget-object v5, p0, Lcom/android/server/PermissionDialog;->viewId:Landroid/view/View;

    .line 91
    const v6, 0x10203d1

    .line 90
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 92
    .local v4, "textRem":Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/server/PermissionDialog;->checkSta:Landroid/widget/CheckBox;

    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 93
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 95
    iget-object v5, p0, Lcom/android/server/PermissionDialog;->inputPackage:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/server/PermissionDialog;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "appName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/android/server/PermissionDialog;->inputPackage:Ljava/lang/String;

    .line 98
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/PermissionDialog;->mOpLabels:[Ljava/lang/CharSequence;

    iget v7, p0, Lcom/android/server/PermissionDialog;->mDef:I

    add-int/lit8 v7, v7, -0x40

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v5, p0, Lcom/android/server/PermissionDialog;->viewId:Landroid/view/View;

    invoke-virtual {p0, v5}, Lcom/android/server/PermissionDialog;->setView(Landroid/view/View;)V

    .line 100
    iget-object v5, p0, Lcom/android/server/PermissionDialog;->myHandle:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/server/PermissionDialog;->myHandle:Landroid/os/Handler;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v8, 0x3a98

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 61
    return-void
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "inputName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 124
    iget-object v3, p0, Lcom/android/server/PermissionDialog;->contId:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 125
    .local v1, "packMan":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 127
    .local v2, "runInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v3, 0x2200

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 132
    .local v2, "runInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v2, :cond_0

    .line 133
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    return-object v3

    .line 129
    .local v2, "runInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v4

    .line 135
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .local v2, "runInfo":Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-object v4
.end method
