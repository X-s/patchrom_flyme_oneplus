.class public Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;
.super Ljava/lang/Object;
.source "UserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/drawer/UserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserDetails"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mName:Ljava/lang/String;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static synthetic -get0(Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;)Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public constructor <init>(Landroid/os/UserHandle;Landroid/os/UserManager;Landroid/content/Context;)V
    .locals 5
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "um"    # Landroid/os/UserManager;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    .line 57
    iget-object v3, p0, Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 59
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 60
    sget v3, Lcom/android/settings_exlib/R$string;->managed_user_title:I

    invoke-virtual {p3, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;->mName:Ljava/lang/String;

    .line 62
    const v3, 0x1080329

    .line 61
    invoke-virtual {p3, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 72
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-static {p3, v0}, Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;->encircle(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 55
    return-void

    .line 64
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_0
    iget-object v3, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/settings_exlib/drawer/UserAdapter$UserDetails;->mName:Ljava/lang/String;

    .line 65
    iget v1, v2, Landroid/content/pm/UserInfo;->id:I

    .line 66
    .local v1, "userId":I
    invoke-virtual {p2, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 67
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p2, v1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 69
    .end local v0    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/android/settings_exlib/drawable/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .restart local v0    # "icon":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method private static encircle(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 76
    new-instance v0, Lcom/android/settings_exlib/drawable/UserIconDrawable;

    invoke-static {p0}, Lcom/android/settings_exlib/drawable/UserIconDrawable;->getSizeForList(Landroid/content/Context;)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/settings_exlib/drawable/UserIconDrawable;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/android/settings_exlib/drawable/UserIconDrawable;->setIconDrawable(Landroid/graphics/drawable/Drawable;)Lcom/android/settings_exlib/drawable/UserIconDrawable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings_exlib/drawable/UserIconDrawable;->bake()Lcom/android/settings_exlib/drawable/UserIconDrawable;

    move-result-object v0

    return-object v0
.end method
