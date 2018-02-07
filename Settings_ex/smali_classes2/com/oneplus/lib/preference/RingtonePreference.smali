.class public Lcom/oneplus/lib/preference/RingtonePreference;
.super Lcom/oneplus/lib/preference/Preference;
.source "RingtonePreference.java"

# interfaces
.implements Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;


# static fields
.field private static final EXTRA_RINGTONE_AUDIO_ATTRIBUTES_FLAGS:Ljava/lang/String; = "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

.field private static final FLAG_BYPASS_INTERRUPTION_POLICY:I = 0x40

.field private static final TAG:Ljava/lang/String; = "RingtonePreference"

.field private static getDefaultRingtoneUriBySubId:Ljava/lang/reflect/Method;


# instance fields
.field private mRequestCode:I

.field private mRingtoneType:I

.field private mShowDefault:Z

.field private mShowSilent:Z

.field private mSubscriptionID:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 187
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/lib/preference/RingtonePreference;->getDefaultRingtoneUriBySubId:Ljava/lang/reflect/Method;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_ringtonePreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x1

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 62
    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mSubscriptionID:I

    .line 68
    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->RingtonePreference:[I

    .line 67
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 69
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->RingtonePreference_android_ringtoneType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRingtoneType:I

    .line 71
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->RingtonePreference_android_showDefault:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowDefault:Z

    .line 73
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->RingtonePreference_android_showSilent:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowSilent:Z

    .line 75
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 64
    return-void
.end method


# virtual methods
.method public getRingtoneType()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRingtoneType:I

    return v0
.end method

.method public getShowDefault()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowDefault:Z

    return v0
.end method

.method public getShowSilent()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowSilent:Z

    return v0
.end method

.method public getSubId()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mSubscriptionID:I

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 304
    iget v1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRequestCode:I

    if-ne p1, v1, :cond_2

    .line 306
    if-eqz p3, :cond_0

    .line 307
    const-string/jumbo v1, "android.intent.extra.ringtone.PICKED_URI"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 309
    .local v0, "uri":Landroid/net/Uri;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/RingtonePreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 314
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 309
    .restart local v0    # "uri":Landroid/net/Uri;
    :cond_1
    const-string/jumbo v1, ""

    goto :goto_0

    .line 317
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method protected onAttachedToHierarchy(Lcom/oneplus/lib/preference/PreferenceManager;)V
    .locals 1
    .param p1, "preferenceManager"    # Lcom/oneplus/lib/preference/PreferenceManager;

    .prologue
    .line 296
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->onAttachedToHierarchy(Lcom/oneplus/lib/preference/PreferenceManager;)V

    .line 298
    invoke-virtual {p1, p0}, Lcom/oneplus/lib/preference/PreferenceManager;->registerOnActivityResultListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityResultListener;)V

    .line 299
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/PreferenceManager;->getNextRequestCode()I

    move-result v0

    iput v0, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRequestCode:I

    .line 295
    return-void
.end method

.method protected onClick()V
    .locals 4

    .prologue
    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.oneplus.RINGTONE_PICKER"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 177
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/RingtonePreference;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/preference/PreferenceManager;->getFragment()Lcom/oneplus/lib/preference/PreferenceFragment;

    move-result-object v1

    .line 178
    .local v1, "owningFragment":Lcom/oneplus/lib/preference/PreferenceFragment;
    if-eqz v1, :cond_0

    .line 179
    iget v2, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRequestCode:I

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/lib/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 172
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/RingtonePreference;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/preference/PreferenceManager;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRequestCode:I

    invoke-virtual {v2, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 270
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "ringtonePickerIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    .line 198
    const-string/jumbo v5, "android.intent.extra.ringtone.EXISTING_URI"

    .line 199
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/RingtonePreference;->onRestoreRingtone()Landroid/net/Uri;

    move-result-object v6

    .line 198
    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 201
    const-string/jumbo v5, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v6, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowDefault:Z

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 202
    iget-boolean v5, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowDefault:Z

    if-eqz v5, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/RingtonePreference;->getRingtoneType()I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 205
    :try_start_0
    sget-object v5, Lcom/oneplus/lib/preference/RingtonePreference;->getDefaultRingtoneUriBySubId:Ljava/lang/reflect/Method;

    if-nez v5, :cond_0

    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Landroid/media/RingtoneManager;

    .line 208
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v5, "getDefaultRingtoneUriBySubId"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/oneplus/lib/preference/RingtonePreference;->getDefaultRingtoneUriBySubId:Ljava/lang/reflect/Method;

    .line 210
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    sget-object v5, Lcom/oneplus/lib/preference/RingtonePreference;->getDefaultRingtoneUriBySubId:Ljava/lang/reflect/Method;

    if-eqz v5, :cond_1

    .line 211
    const-string/jumbo v6, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 212
    sget-object v5, Lcom/oneplus/lib/preference/RingtonePreference;->getDefaultRingtoneUriBySubId:Ljava/lang/reflect/Method;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/RingtonePreference;->getSubId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x0

    invoke-virtual {v5, v8, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    .line 211
    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    :cond_1
    :goto_0
    const-string/jumbo v5, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-boolean v6, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowSilent:Z

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 234
    const-string/jumbo v5, "android.intent.extra.ringtone.TYPE"

    iget v6, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRingtoneType:I

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 235
    const-string/jumbo v5, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/RingtonePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 236
    const-string/jumbo v5, "android.intent.extra.ringtone.AUDIO_ATTRIBUTES_FLAGS"

    .line 237
    const/16 v6, 0x40

    .line 236
    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 196
    return-void

    .line 223
    :catch_0
    move-exception v3

    .line 225
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 220
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v4

    .line 222
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 217
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v2

    .line 219
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 214
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    .line 228
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :cond_2
    const-string/jumbo v5, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 229
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/RingtonePreference;->getRingtoneType()I

    move-result v6

    invoke-static {v6}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v6

    .line 228
    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 264
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/RingtonePreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 265
    .local v0, "uriString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 1
    .param p1, "ringtoneUri"    # Landroid/net/Uri;

    .prologue
    .line 251
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/RingtonePreference;->persistString(Ljava/lang/String;)Z

    .line 250
    return-void

    .line 251
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValueObj"    # Ljava/lang/Object;

    .prologue
    move-object v0, p2

    .line 275
    check-cast v0, Ljava/lang/String;

    .line 284
    .local v0, "defaultValue":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 285
    return-void

    .line 289
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/RingtonePreference;->onSaveRingtone(Landroid/net/Uri;)V

    .line 274
    :cond_1
    return-void
.end method

.method public setRingtoneType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mRingtoneType:I

    .line 106
    return-void
.end method

.method public setShowDefault(Z)V
    .locals 0
    .param p1, "showDefault"    # Z

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowDefault:Z

    .line 148
    return-void
.end method

.method public setShowSilent(Z)V
    .locals 0
    .param p1, "showSilent"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mShowSilent:Z

    .line 167
    return-void
.end method

.method public setSubId(I)V
    .locals 0
    .param p1, "subId"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/oneplus/lib/preference/RingtonePreference;->mSubscriptionID:I

    .line 128
    return-void
.end method
