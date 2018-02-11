.class public Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;
.super Ljava/lang/Object;
.source "RestrictedDropDownPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/notification/RestrictedDropDownPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestrictedItem"
.end annotation


# instance fields
.field public final enforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

.field public final entry:Ljava/lang/CharSequence;

.field public final entryValue:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0
    .param p1, "entry"    # Ljava/lang/CharSequence;
    .param p2, "entryValue"    # Ljava/lang/CharSequence;
    .param p3, "enforcedAdmin"    # Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;->entry:Ljava/lang/CharSequence;

    .line 258
    iput-object p2, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;->entryValue:Ljava/lang/CharSequence;

    .line 259
    iput-object p3, p0, Lcom/android/settings_ex/notification/RestrictedDropDownPreference$RestrictedItem;->enforcedAdmin:Lcom/android/settings_exlib/RestrictedLockUtils$EnforcedAdmin;

    .line 256
    return-void
.end method
