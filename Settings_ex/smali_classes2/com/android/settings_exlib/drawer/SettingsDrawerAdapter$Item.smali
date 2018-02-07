.class Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;
.super Ljava/lang/Object;
.source "SettingsDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Item"
.end annotation


# instance fields
.field public icon:Landroid/graphics/drawable/Icon;

.field public label:Ljava/lang/CharSequence;

.field public tile:Lcom/android/settings_exlib/drawer/Tile;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings_exlib/drawer/SettingsDrawerAdapter$Item;-><init>()V

    return-void
.end method
